# BF — personal site

Single-page site with a full-bleed hero photo, bio paragraph, and quote, built with plain HTML/CSS (no build step, no framework).

## Files

```
website/
├── index.html        # page content
├── css/style.css      # all styling
├── images/hero.jpg    # background photo
├── CNAME              # custom domain for GitHub Pages
└── .nojekyll           # tells GitHub Pages to skip Jekyll processing
```

## 1. Push to your repo

```bash
git clone https://github.com/onlybodia/website.git
cd website
# copy in index.html, css/, images/, CNAME, .nojekyll from this folder
git add .
git commit -m "Add site"
git push origin main
```

## 2. Turn on GitHub Pages

1. Go to `https://github.com/onlybodia/website` → **Settings** → **Pages**.
2. Under **Build and deployment → Source**, choose **Deploy from a branch**.
3. Branch: `main`, folder: `/ (root)`. Save.
4. Under **Custom domain**, enter `fidiiov.com` and save (this matches the `CNAME` file already in the repo — GitHub will detect it automatically, but setting it in the UI also triggers the HTTPS certificate).
5. Check **Enforce HTTPS** once it becomes available (can take a few minutes after DNS is verified).

## 3. Point your domain at GitHub Pages

At your domain registrar / DNS provider for `fidiiov.com`, add:

**For the apex domain (`fidiiov.com`)** — four A records, all pointing to GitHub Pages' IPs:

| Type | Host | Value |
|------|------|-------|
| A | @ | 185.199.108.153 |
| A | @ | 185.199.109.153 |
| A | @ | 185.199.110.153 |
| A | @ | 185.199.111.153 |

**For `www.fidiiov.com`** (optional, so `www` also works) — one CNAME record:

| Type | Host | Value |
|------|------|-------|
| CNAME | www | onlybodia.github.io |

DNS changes can take anywhere from a few minutes to a few hours to propagate. Once they do, `fidiiov.com` will load the site and GitHub will auto-issue an HTTPS certificate for it.

## Notes on the image

The page is now just the photo itself (`images/hero.jpg`) — the bio and quote text live only inside that image's pixels, not as separate HTML text. It's shown full-size and letterboxed (never cropped), centered on a dark background that matches the photo's edge tone.

Because there's no separate live text anymore, the bio/quote content is only available to screen readers and search engines via the image's `alt` attribute in `index.html` — worth keeping that in sync if the image ever changes.
