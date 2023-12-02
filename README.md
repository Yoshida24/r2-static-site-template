# r2-static-site-template
Preset for R2 static site deploy.  

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/Yoshida24/r2-static-site-template)

## Included

- GitHub Actions for R2 Deployment
- Auto AI PR Review
- Vite/PreactTypeScript package

## Setup GitHub Actions
To deploy site to Cloudflare R2 via GitHub Actions, set Repository Secrets on your repository.

| Name | Description |
| --- | --- |
| CLOUDFLARE_ACCOUNT_ID | Cloudflare Account ID. Get from R2 > Overview. |
| ACCESS_KEY_ID | R2 Access Key ID. Get from R2 > Manage R2 API Tokens. |
| SECRET_ACCESS_KEY | R2 Secret Access Key. Get from R2 > Manage R2 API Tokens. |
| REGION | Region to deploy. *e.g.* `apac` ([available regions](https://developers.cloudflare.com/r2/reference/data-location/)) |
| S3_URI | R2 Bucket name and key. *e.g.* `s3://bucket-name/` , `s3://bucket-name/key-name` |
| OPENAI_KEY | OpenAI Key for AI Code Review. |
