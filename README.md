# hugo-theme-readable

Readable is a theme for the static-site generator [Hugo](https://gohugo.io/) using the [readable.css](https://readable-css.freedomtowrite.org/) framework built by [Freedom to Write](https://freedomtowrite.org/).

Shoutout to [Benjamin Hollon](https://benjaminhollon.com/) for his amazing work building this CSS framework and making it so simple to use.

Want to check out a demo? (coming soon)

![demo image](/docs/demo_image.png)

## Installation

To add this theme to an existing Hugo site, start by adding this repo as a submodule in the site's themes folder.

`git submodule add https://github.com/cjtheham/hugo-theme-readable themes/readable`

Then, update your config file to be using the new theme. For example, if you are using config.toml, the line should become:

`theme = 'readable'`

If you don't have an existing site, feel free to use the provided [starter template](https://github.com/cjtheham/hugo-starter-readable) to quickly get your website online.

For more information on starting a Hugo website and using custom themes, refer to the [Hugo documentation](https://gohugo.io/documentation/).

## Usage

Freedom to Write has provided some awesome guides on writing HTML that works automatically with the formatting of Readable. For a complete HTML page guide on writing custom pages, see [Overall Structure](https://codeberg.org/Freedom-to-Write/readable.css/wiki/Overall-Structure). For some neat tips that may make life easier working with this style sheet, read [Quick Tips](https://codeberg.org/Freedom-to-Write/readable.css/wiki/Quick-Tips).

## Shortcodes

### aside

You can use the `aside` shortcode to signify content that is slightly off-topic in regard to the rest of the post.

Here's how it compares to a blockquote:

```text
> This is a blockquote.
>
> This is a default **markdown** element and supports formatting inside it.

{{< aside >}}
This is an aside element.

You can use **markdown** formatting inside it.
{{</ aside >}}
```

The above code generates the following output:

![Comparing a blockquote to an aside. The blockquote has a thin bar on it's left, while the aside element is inside a nice box with rounded corners.](/docs/blockquote_vs_aside.png)

### video

You can use the `video` shortcode to embed a video player in your post.

```text
{{< video source="https://test-videos.co.uk/vids/bigbuckbunny/mp4/av1/1080/Big_Buck_Bunny_1080_10s_5MB.mp4" type="video/mp4" caption="Of course it's Big Buck Bunny!" >}}
```

![A still from an embedded video with controls in a post.](/docs/video.png)

Sources can be remote or static content from your website. You can find the supported file types [here](https://www.w3schools.com/html/html5_video.asp#table1).

## Notes

- Benjamin loves when new sites and projects pop up using the readable.css framework!
  - If you've built a complete site using this theme, submit an issue to the [original repo](https://codeberg.org/Freedom-to-Write/readable.css) with the URL of your site to be featured in the project's README.
  - Projects like this and other non-website uses of the framework, such as adapting it to other static site generators, can be featured on the page [Unofficial Related Projects (that are awesome)](https://codeberg.org/Freedom-to-Write/readable.css/wiki/Unofficial-Related-Projects-%28that-are-awesome%29). Go mention [@freedomtowrite@fosstodon.org](https://fosstodon.org/@freedomtowrite) to be featured there!
