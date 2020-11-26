---
title: bookmarks
---

See the [book queue](#bookqueue) for the analogue library.

## Collections

* [Applications/Plugins with Vim-like keybindings](https://vim.reversed.top/) - For a continuous keyboard based experience.
* [Fixing mistakes in Git](https://github.blog/2015-06-08-how-to-undo-almost-anything-with-git/) - Note `git rm --cached [file]` removes file from tracking but keeps file on disk.
* [Self-host everything](https://github.com/Atarity/deploy-your-own-saas) - Including: VPN, Music, eBooks, Photos, Docs, Bookmarks, Calendar Storage, Email, Chat, Backup, Passwords etc.

---

## Reading
* <https://aldaily.com> - Arts and Letters Daily, essays, articles, book reviews and so on.
* <https://redef.com/> - Aggregation of news and articles in the genres: Media, Fashion, Sports, Music, Tech.
* <https://longform.org> - Aggregation of long form (>2000 words) articles and other non-fiction available on the web.
* <https://longreads.com> - Similarly aggregates investigative reporting, interviews and profiles, podcasts, essays and criticism.
* <https://git-scm.com/book/en/v2> - Git reference (and behind the scenes).

### Blogs

* [Drew Devault](https://drewdevault.com)
* [RachelByTheBay](https://rachelbythebay.com/w/)
* [Luke Smith](https://lukesmith.xyz)
* [Marginal Revolution](https://marginalrevolution.com)
* [Kevin Liu](https://kliu.io)
* [DataSecretsLox](https://www.datasecretslox.com/index.php/board,1.0.html) (Forum)
* [Daring Fireball](https://daringfireball.net)
* [Gwern](https://www.gwern.net/index)
* [arp242](https://www.arp242.net)

---

## Loginless Services

### Data
* [Formspree](https://formspree.io/) - Put a form on your site, write your address in the HTML and get the submissions on your email.
* [KeyValue.xyz](https://keyvalue.xyz/) - Key-value store as a service. Get and set key/value pairs using an API.
* [Tinysheet](https://tinysheet.com/) - Light, mobile-optimized 2×10 spreadsheets that run locally.
* [Franchise](https://franchise.cloud/) - A notebook for SQL: easy charts, compare queries, download and share. SQLite, Postgres, MySQL, BigQuery, XLSX, JSON, CSV.
* [Microlink](https://microlink.io) – Turns websites into data.

### Publishing
* [image-charts.com](https://www.image-charts.com/) - Display many types of charts, graphviz graphs, animated GIFs and QR codes from an URL, works also as a drop-in replacement for Google Image Charts. [quickchart.io](https://quickchart.io/) is specialized in charts and can render some pretty ones, and also QR codes.
* [compress-or-die](https://compress-or-die.com/) - Excellent high power image compression.
* [draw](https://draw.io) - Drawing and prototyping.
* [Itty Bitty](https://about.bitty.site) - Create websites contained entirely on their URLs, share as QR code, tweets etc.
* [write.as](https://write.as/) and [telegra.ph](https://telegra.ph/) allow you to write and publish articles minimalistically.
* [Seashells](https://seashells.io/) will pipe output from a command line to a webpage in real-time _and store it_ (for how long?). `echo 'something' | nc seashells.io 1337`
* [gath](https://gath.io) - Decentralised events.

### Communication
* [curl mail](https://curlmail.co/) - `curl curlmail.co/john@example.com` to send email.
* [Mailinator](https://www.mailinator.com/), [Maildrop](https://maildrop.cc/), [Nada](https://getnada.com/) and other disposable email address services allow you to use one or multiple email addresses without registering (everything is public). [Emaildrop](https://www.emaildrop.io/v1) even has a public API!
* [poste](https://poste.io/) - All the spam protection and mail server shenanigans that is difficult to do provide neatly.

> Combining SMTP + IMAP + POP3 + Antispam + Antivirus + Web administration + Web email.

### Development Tools / Hosting
* [patchbay.pub](https://patchbay.pub/) - Poor man's ngrok/IFTTT/serverless.
* [serveo](http://serveo.net/) and [localhost.run](http://localhost.run/) - Get a public URL for a program running on localhost, no installation needed, uses ssh.
* [redirect.name](https://redirect.name/) - Configure simple and custom domain redirects and URL forwarding with just two DNS records.
* [dynamic.name](https://dynamic.name/) - Dynamic DNS without logins and over DNS itself (nslookup will update your subdomain), but you still need a password for each subdomain.
* [Repl.it](https://repl.it/) - Interactive IDE and shell online (sign-up optional)
* [wireguard](https://www.wireguard.com/) - WireGuard is an extremely simple yet fast and modern VPN that utilizes state-of-the-art cryptography. Self-hostable.
* [yunohost](https://yunohost.org/#/) - One-click install of many apps and services, one-click upgrades as well.


---

## Suckless (<https://suckless.org/>)

### The holy, quadrinity

= [dwm](https://git.suckless.org/dwm/) + [dmenu](https://git.suckless.org/dmenu) + [st](https://git.suckless.org/st) + [surf](https://git.suckless.org/surf)

> dwm is a dynamic window manager for X in &lt; 2000 LOC. It manages windows in tiled, monocle and floating layouts. All of the layouts can be applied dynamically, optimising the environment for the application in use and the task performed.

> st is a simple terminal implementation for X.

> surf is a simple web browser based on WebKit2/GTK+. It is able to display websites and follow links.

> dmenu is a dynamic menu for X, originally designed for dwm. It manages large numbers of user-defined menu items efficiently.

* [farbfeld](https://git.suckless.org/farbfeld) - A lossless image format which is easy to parse, pipe and compress. encode: 

`png2ff < example.png | bzip2 > example.ff.bz2`.

* [stagit](git://git.codemadness.org/stagit) - Static git page generator.

---

## The legendary [**Dylan Araps**](https://github.com/dylanaraps)

* [kiss linux](https://getkiss.org/) - An independent Linux distribution with a focus on simplicity and the concept of “less is more”.
* [pash](https://github.com/dylanaraps/pash) - A simple password manager using GPG.
* [sowm](https://github.com/dylanaraps/sowm) - An itsy bitsy floating window manager.
* [fff](https://github.com/dylanaraps/fff) - A simple file manager written in bash.
* [shell bible](https://github.com/dylanaraps/pure-sh-bible) - A collection of pure POSIX sh alternatives to external processes.

---

## Misc

* [USB Armory](https://inversepath.com/usbarmory.html#usbarmory_coin_3-tab)
* [SED](http://anaturb.net/sed.htm)
* [Pen testing](https://m0chan.github.io/2019/07/30/Windows-Notes-and-Cheatsheet.html)
