![Periodic Audio](http://i.imgur.com/4pGSR95.jpg)

> Next-generation periodic audio web.

### Prerequisites

This application requires `node` and `npm` to build and run. You may need to install [Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12) from the Apple App Store for essential development tools. We use `homebrew` to acquire `node` and generally make life easier.

First install `homebrew` on a fresh macOS / OS X installation:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Now update `homebrew` and install node:

```bash
brew update
brew install node
brew install git   # optional, but helpful in the future
```

Once this process completes, you should have both `node` and `npm` installed.

## Get The Code

To checkout the code tree for Kiphy via `git`:

```bash
git clone https://github.com/drewlustro/periodic-audio.git
cd periodic-audio
```

Alternatively, download and unzip the source code from the [repository homepage](https://github.com/drewlustro/periodic-audio), then `cd` into the directory:

```bash
cd ~/Downloads
unzip periodic-audio-master.zip
cd periodic-audio-master
```

## Develop &amp; Run

Make sure your terminal session's current working directory is in the Kiphy source code folder.

First install development dependencies:

```bash
npm install
```

To begin development:

```bash
npm run dev
```

Once the development build is complete, navigate your web browser to [http://localhost:4000](http://localhost:4000).

## Build

To build for production:

```bash
npm run build
```

The completed build will be located in the `dist/` subfolder.

## Changlog

Version | Time | Note
---- | ------- | ----
0.3.0 | March 29, 4:00pm | Product view to mockup; migrated all image data; create endpoints for each model IEM's
0.2.0 | March 22, 11:00pm | Views: Faq, Product, Static; accompanying routes; Copyright component. Wire up primary navigation.
0.1.0 | March 22, 6:00pm | Scaffold `vuejs` and `webpack` boilerplate; subdomain ops and push scripts.


## Tasks

- Product page flex
- Product data in-memory hash
- Landing splash






