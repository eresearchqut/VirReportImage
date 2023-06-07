#!/bin/bash --login
set +euo pipefail
conda activate virreport
set -euo pipefail

# echo "CMD $@"
exec $@
