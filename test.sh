echo "test" > test.txt

for i in {1..32}
do
    bash inner.sh &
done
bash inner.sh

