# This file is used in the pipeline to flatten out all typst files into one big file
import re, os, sys

def flatten(filepath):
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        print(f"Warning: Could not read {filepath}: {e}")
        return ""

    # search all #includes in the file
    pattern = re.compile(r'#?include\s+"([^"]+)"')

    def replacer(match):
        inc_file = match.group(1)
        # path of file
        inc_path = os.path.join(os.path.dirname(filepath), inc_file)
        return flatten(inc_path)

    return pattern.sub(replacer, content)

if __name__ == "__main__":
    in_file = sys.argv[1]
    out_file = sys.argv[2]

    flat_content = flatten(in_file)

    # Find all resources includes and change them to the absolute path of the repository
    path_pattern = re.compile(r'"(?:[^"]*/)?resources/([^"]+)"')
    flat_content = path_pattern.sub(r'"/docs/resources/\1"', flat_content)

    with open(out_file, 'w', encoding='utf-8') as f:
        f.write(flat_content)