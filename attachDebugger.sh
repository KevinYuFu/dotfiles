PORT=3079 
ssh -f -N -L "${PORT}":localhost:"${PORT}" dev-dsk-kruplpa-1d-e40be910.us-east-1.amazon.com
bb server on RW

PORT=1044; ssh -f -N -L "${PORT}":localhost:"${PORT}" dev-dsk-kruplpa-1d-e40be910.us-east-1.amazon.com
bb server on RS
