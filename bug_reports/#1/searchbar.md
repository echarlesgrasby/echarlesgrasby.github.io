# Inconsistent Placement of Search Bar

## Issue Summary
The search bar, though specified in the conf.py file to use the navigation bar is bound to the left-hand panel of the page. This is not visible on pages that utilize the me.html template, but is visible on pages where me.html is not used.

### Steps To Reproduce

* Navigate to https://echarlesgrasby.github.io/
* Navbar is not present
* Click "Blog" link in navbar of site
* Navbar is present when bio sidebar is not shown

## Action Item(s)
1. Investigate a non-deprectaed method of placing the navbar, such that it is consistently displayed on each page.
2. Implement the fix.

## Supporting Information

Note that the live build output (when using ```sphinx-autobuild```) shows that the current placement of the search bar uses a deprecated command:

```
WARNING: Deprecated config `search_bar_position` used.Use `search-field.html` in `navbar_end` template list instead.
```

### Screenshots provided:

1. "with-searchbar.png"
2. "without-searchbar.png"
