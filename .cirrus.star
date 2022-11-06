load("github.com/cirrus-modules/graphql", "generate_build_number")

def main():
  return {
    "env": {
      "CIRRUS_BUILD_NUMBER": generate_build_number()
    }
  }
