# CMPly Loader (Web) - GTM Community Template

CMPly Loader injects CMPly SDK via Google Tag Manager at `Consent Initialization` stage.

## What it does

- Loads `${baseUrl}/sdk/gtm-loader.js?siteId=...`
- `gtm-loader.js` appends `${baseUrl}/sdk/init.js` with `data-site-id`
- Enables CMPly consent initialization through GTM sandbox-safe flow

## Recommended trigger

- `Consent Initialization - All Pages`

## Required fields

- `siteId` (required)
- `baseUrl` (default: `https://cmply.app`)

## Permissions

- Inject scripts:
  - `https://cmply.app/sdk/gtm-loader.js*`
  - `https://dev.cmply.app/sdk/gtm-loader.js*` (optional for staging)

## Validation checklist

1. Tag Assistant shows `Succeeded`.
2. `typeof window.CMPly === "object"`.
3. `window.dataLayer?.filter(x => x && x[0] === 'consent')` includes `default` and `update`.

## Support

- https://cmply.app
- https://github.com/cmplyapp-coder/cmply-gtm-template
