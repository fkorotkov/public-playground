load("github.com/cirrus-modules/graphql", "generate_build_number")
load("cirrus", "http")

def main():
  print(http.get("https://ifconfig.me").body())
  return {
    "env": {
      "CIRRUS_BUILD_NUMBER": generate_build_number()
    }
  }
