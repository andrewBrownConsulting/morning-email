# n8n on DigitalOcean App Platform

This repository is set up to deploy n8n on DigitalOcean App Platform using a Dockerfile and a managed PostgreSQL database.

## What is included

- Dockerized n8n runtime
- App Platform spec at `.do/app.yaml`
- Managed PostgreSQL configuration for n8n persistence
- Environment variable template at `.env.example`

## Deploy with DigitalOcean UI

1. Push this repository to GitHub.
2. In DigitalOcean, create a new App from that GitHub repo.
3. Select Dockerfile deployment.
4. In environment variables, set secure values for:
   - `N8N_BASIC_AUTH_PASSWORD`
   - `N8N_ENCRYPTION_KEY`
5. Add your app domain and set:
   - `N8N_HOST` to your domain (for example `n8n.example.com`)
   - `WEBHOOK_URL` to your full public URL (for example `https://n8n.example.com/`)
6. Deploy.

## Deploy with doctl and app spec

1. Install and authenticate doctl.
2. Ensure `.do/app.yaml` contains valid secret values and your desired region/size.
3. Run:

```bash
doctl apps create --spec .do/app.yaml
```

For updates:

```bash
doctl apps update <app-id> --spec .do/app.yaml
```

## Notes for production

- Use strong secret values for authentication and encryption.
- Keep `N8N_DEFAULT_BINARY_DATA_MODE=database` for stateless container environments.
- Configure backups on the managed PostgreSQL database.
- Add a custom domain and TLS in App Platform before using webhooks in production.
