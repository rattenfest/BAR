# Fixes invalid Typst in typdiff output before compilation
import re, sys

def fix_diff_file(diff_file):
    with open(diff_file, 'r', encoding='utf-8') as f:
        content = f.read()

    # #link(<label>, text) -> text
    content = re.sub(r'#?link\s*\(\s*\\?<[^>]+>\s*,\s*([^)]+)\s*\)', r'\1', content)
    # #link(<label>)[text] -> [text]
    content = re.sub(r'#?link\s*\(\s*\\?<[^>]+>\s*\)\s*(\[[^\]]+\])', r'\1', content)
    # @reference -> reference
    content = re.sub(r'(?<!["\'])@([a-zA-Z0-9_.-]+)', r'\1', content)
    # remove bare <label> inside empty diff tags
    content = re.sub(r'(#diff-(?:added|deleted)\[\s*)<[^>]+>', r'\1', content)
    # remove diff blocks starting with // (multi-line: opener + ] on next line)
    content = re.sub(r'#diff-(?:added|deleted)\[//[^\n]*\n[ \t]*\]', '', content)
    # remove remaining single-line // diff blocks
    content = re.sub(r'#diff-(?:added|deleted)\[//[^\n]*', '', content)
    # remove ] that directly precede // (orphaned closer from // comment-internal diff)
    content = re.sub(r'^([ \t]*)\]([ \t]*//.*)$', r'\1\2', content, flags=re.MULTILINE)
    # Remove broken includes left over by typdiff
    content = re.sub(r'#include\s*\(\s*"[^"]+"\s*\)', '', content)
    # Fix escaped labels caused by typdiff (e.g., \<label> -> <label>)
    content = re.sub(r'\\<([^>]+)>', r'<\1>', content)

    with open(diff_file, 'w', encoding='utf-8') as f:
        f.write(content)

if __name__ == "__main__":
    if len(sys.argv) > 1:
        fix_diff_file(sys.argv[1])
    else:
        print("Please enter path to .typ file")
