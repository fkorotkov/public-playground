for i in {1..1000}
do
    echo ""
    echo "Attempt $i"
    echo "Upload"
    curl -X POST --data-binary @test.txt http://${CIRRUS_HTTP_CACHE_HOST}/${CIRRUS_BUILD_ID}/test.txt
    echo "Download"
    curl -X GET -o /dev/null http://${CIRRUS_HTTP_CACHE_HOST}/${CIRRUS_BUILD_ID}/test.txt
done
