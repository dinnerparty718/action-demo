# Build base images

build base images and upload images to docker registry

## Usage Example

```yaml
steps:

  - name: Build Base Image
    uses: ./.github/actions/build-base-images
    with:
      api-key: 
```
