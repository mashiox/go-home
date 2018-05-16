Ideally, this is supposed to work as an isomorphic workspace for golang projects. 

## Usage:
1. Clone it
2. Add packages/sources to `src/`
3. `make` to build container images
4. `make release` compile the golang binary
5. `make compile` compile the sources without keeping build artifacts

Docker is leveraged in order to provide a clean work environment each time we want to build or release golang artifacts.

## Roadmap

* Proof of concept of work environment working on a project
  * Get build artifacts out of `out/`
  * Edge case: library sources. How will it handle this?
* Compose build for faster development