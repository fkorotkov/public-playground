load("cirrus", "http")

def main():
    resp = http.get("https://httpbin.org/json")
    if resp.status_code != 200 or resp.json().get("slideshow") == None:
        fail("failed to parse JSON")
    print(resp)
    return []
