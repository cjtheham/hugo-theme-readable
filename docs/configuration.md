# Configuration

## Theme parameters

The following settings can go either directly into a separate `params.yml` file or into a section `params` in your `config.yml`, e.g.

```yaml
theme: 'readable'
title: 'Your Title'
[...]
params:
    theme_parameter: value
```

### author

Your name.

```yaml
author: Your name goes here
```

### mastodon

The link to your Mastodon profile.

```yaml
mastodon: https://mastodon.example/@profile
```

### subtitle

The subtitle for your page.

```yaml
subtitle: This is the subtitle of the website.
```

### navbar_style

This selects the look of the navigation bar at the top of the page. See the [readable.css wiki](https://codeberg.org/Freedom-to-Write/readable.css/wiki/Navbar-Styles) for possible styles.

> Attention!!!  
> readable.css changed it's default navbar style from 'classy' to 'default' with v1.1.0.  
> This theme however chose to keep 'classy' as the default style, so the look of existing websites wouldn't change suddenly after an update.

```yaml
navbar_style: classy
```
