# This file is used in the pipeline to enforce the documentation guidelines about figures
import sys, os

def check_typst_files(directory):
    errors = []
    # Loop all files
    for root, _, files in os.walk(directory):
        for file in files:
            # Find typst files
            if file.endswith(".typ"):
                path = os.path.join(root, file)
                with open(path, 'r', encoding='utf-8') as f:
                    lines = f.readlines()

                    for i, line in enumerate(lines):
                        content = line.strip()

                        # Check if #table or #image
                        if "#table" in content or "#image" in content:
                            # Check if there is a ignore
                            prev_line = lines[i-1].strip() if i > 0 else ""

                            # Skip if ignored
                            if "// lint:ignore" in prev_line:
                                continue

                            # If #table or #image is not in a figure and it is not skipped
                            if "#figure" not in content and "#figure" not in prev_line:
                                # Github Action Comment
                                print(f"{path}:{i+1}:1: Missing #figure or Caption. Use '// lint:ignore [Reason]' to skip this Element.")
                                errors.append(f"Error in {path} (Row {i+1}): Image or Table not in #figure element. If this is intended, add an ignore comment '// lint:ignore [Reason]' above the element.")

    return errors

if __name__ == "__main__":
    found_errors = check_typst_files(".")
    if found_errors:
        for err in found_errors:
            print(err)
        sys.exit(1)
    print("Lint complete")