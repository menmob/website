// Cloudflare Worker: serves the resume at https://resume.maxmob.sh while the
// PDF itself lives in this repo and deploys with the main GitHub Pages site.
//
// Setup (Cloudflare dashboard, one time):
//   1. Workers & Pages -> Create -> Worker, paste this file, deploy.
//   2. On the worker: Settings -> Domains & Routes -> Add -> Custom Domain
//      -> resume.maxmob.sh (Cloudflare creates the DNS record and TLS cert
//      automatically; no manual DNS entry needed).

const RESUME_URL = "https://maxmob.sh/static/MaxMobleyResume.pdf";

export default {
  async fetch() {
    const upstream = await fetch(RESUME_URL, {
      cf: { cacheTtl: 3600, cacheEverything: true },
    });
    if (!upstream.ok) {
      return new Response("Resume temporarily unavailable", { status: 502 });
    }
    return new Response(upstream.body, {
      headers: {
        "content-type": "application/pdf",
        "content-disposition": 'inline; filename="MaxMobleyResume.pdf"',
        "cache-control": "public, max-age=3600",
      },
    });
  },
};
