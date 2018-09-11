This is a simple test script to determine if a directory exists and whether it is empty or not

It takes in command line arguments and processes them as directories

- if the argument is a directory that doesn't exist, it will output 'doesn't exist'
- if the argument is a directory but its empty, it will output "exists and is empty"
- if the argument is a directory but its not empty, it will output "exists and is not empty"

Note:  all tests are done assuming directories are passed as arguments.
if a non-directory is passed in as an argument, it will default to "doesn't exist" (e.g. test_empty.sh blah\\blah\\ will result in 'doesn't exist')
