# G2Ball Football – web (Render deployment)

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/datamanih/g2ball-football)

Click the button above after this repository is on GitHub. It creates the web service, a 1 GB disk at `/var/data`, and asks for `APIFY_TOKEN`. Then add your domain under the service's Custom Domains.

Prebuilt G2Ball Football website plus a zero-dependency Node server (`server/server.mjs`).

- Start command: `node server/server.mjs` (no build step needed; `dist/` is committed)
- Persistent disk mounted at `/var/data` (`DATA_DIR=/var/data`) keeps accounts and cached Full-Time divisions.
- Set `APIFY_TOKEN` in Render's Environment settings. Never commit it.
