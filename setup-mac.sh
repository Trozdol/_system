
original_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#
#                source path
#            _________|_________
#           |                  |
rsync -rlpt /private/etc/apache2 $original_path/apache-config
