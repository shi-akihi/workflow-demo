# write a bash file to check the clang format
# usage: ./check.sh
if ! find . -name '*.cpp' -o -name '*.hpp' -o -name '*.h' | xargs clang-format --dry-run --Werror; then
    echo "Code is not formatted according to clang-format."
    exit 1
else
    echo "Code is properly formatted."
fi