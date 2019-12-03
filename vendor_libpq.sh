cd vendor
curl --remote-name-all https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-12/libpq5_12.1-1.pgdg16.04+1_amd64.deb
dpkg -x libpq5_12.1-1.pgdg16.04+1_amd64.deb .
cd ..
export LD_LIBRARY_PATH="$HOME/vendor/usr/lib/x86_64-linux-gnu/:$LD_LIBRARY_PATH"
