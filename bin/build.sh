cd .. || exit
python ./bin/clean.py

cd ./doc || exit
./source/scripts/generate.sh
sphinx-build -b html -d build/doctrees source build/html || exit

mv -fv ./build/html/* ./
