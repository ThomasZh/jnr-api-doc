# Gitbook Manual

How to install, run and build gitbook.

## Introduction

GitBook 是目前最流行的开源书籍写作方案，可以把Markdown 文件汇集成电子书，并提供 PDF、HTML 等多种格式输出。一般还需配合 Markdown 文本编辑器、Git 代码管理工具和 GitHub 托管仓库使用。

> ## ⚠️ Deprecation warning:
> As the efforts of the GitBook team are focused on the [GitBook.com](https://www.gitbook.com) platform, the CLI is no longer under active development.  
> All content supported by the CLI are mostly supported by our [GitBook.com / GitHub integration](https://docs.gitbook.com/integrations/github).  
> Content hosted on the [legacy.gitbook.com](https://legacy.gitbook.com) will continue working until further notice. For differences with the new vesion, check out our [documentation](https://docs.gitbook.com/v2-changes/important-differences).


## Install
```
npm install -g gitbook-cli
nvm use 10
gitbook install

gitbook serve
执行命令，GitBook 会启动一个 4000 端口 （http://localhost:4000） 用于预览。

./build.sh
上述命令默认将生成的静态网站输出到 _book 目录。
```

## [Demo](https://thomaszh.github.io/gitbook-manual)


GitBook
=======

[![NPM version](https://badge.fury.io/js/gitbook.svg)](http://badge.fury.io/js/gitbook)
[![Linux Build Status](https://travis-ci.org/GitbookIO/gitbook.png?branch=master)](https://travis-ci.org/GitbookIO/gitbook)
[![Windows Build status](https://ci.appveyor.com/api/projects/status/63nlflxcwmb2pue6?svg=true)](https://ci.appveyor.com/project/GitBook/gitbook)
[![Slack Status](https://slack.gitbook.com/badge.svg)](https://slack.gitbook.com)

GitBook is a command line tool (and Node.js library) for building beautiful books using GitHub/Git and Markdown (or AsciiDoc). Here is an example: [Learn Javascript](https://legacy.gitbook.com/book/GitBookIO/javascript).

You can publish and host books easily online using [gitbook.com](https://legacy.gitbook.com). A desktop editor is [also available](https://legacy.gitbook.com/editor).

Stay updated by following [@GitBookIO](https://twitter.com/GitBookIO) on Twitter or [GitBook](https://www.facebook.com/gitbookcom) on Facebook.

Complete documentation is available at [toolchain.gitbook.com](http://toolchain.gitbook.com/).

![Image](https://raw.github.com/GitbookIO/gitbook/master/preview.png)

## Getting started

GitBook can be used either on your computer for building local books or on legacy.gitbook.com for hosting them. To get started, check out [the installation instructions in the documentation](docs/setup.md).

## Usage examples

GitBook can be used to create book, public documentation, enterprise manual, thesis, research papers, etc.

You can find a [list of real-world examples](docs/examples.md) in the documentation.

## Help and Support

We're always happy to help out with your books or any other questions you might have. You can ask a question on the following contact form at [gitbook.com/contact](https://legacy.gitbook.com/contact) or signal an issue on [GitHub](https://github.com/GitbookIO/gitbook).

## Features

* Write using [Markdown](http://toolchain.gitbook.com/syntax/markdown.html) or [AsciiDoc](http://toolchain.gitbook.com/syntax/asciidoc.html)
* Output as a website or [ebook (pdf, epub, mobi)](http://toolchain.gitbook.com/ebook.html)
* [Multi-Languages](http://toolchain.gitbook.com/languages.html)
* [Lexicon / Glossary](http://toolchain.gitbook.com/lexicon.html)
* [Cover](http://toolchain.gitbook.com/ebook.html)
* [Variables and Templating](http://toolchain.gitbook.com/templating/)
* [Content References](http://toolchain.gitbook.com/templating/conrefs.html)
* [Plugins](http://toolchain.gitbook.com/plugins/)
* [Beautiful default theme](https://github.com/GitbookIO/theme-default)

## Publish your book

The platform [legacy.gitbook.com](https://legacy.gitbook.com/) is like an "Heroku for books": you can create a book on it (public, or private) and update it using **git push**.

## Licensing

GitBook is licensed under the Apache License, Version 2.0. See [LICENSE](LICENSE) for the full license text.