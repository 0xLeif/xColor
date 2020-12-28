# xColor

**xColorBook.xColorBookPages.xColors**

```swift
import xColor

let qa_page = xColorBookPage(colors: [
    "primary": xColor(red: 1, green: 0, blue: 0, alpha: 1),
    "secondary": xColor(red: 0.5, green: 0, blue: 1, alpha: 1),
    "accent": xColor(red: 0.5, green: 0.5, blue: 1, alpha: 1),
])

let xmas_page = xColorBookPage(colors: [
    "primary": xColor(red: 1, green: 0, blue: 0, alpha: 1),
    "secondary": xColor(red: 0, green: 1, blue: 0, alpha: 1),
    "accent": xColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1),
])

let holloween_page = xColorBookPage(colors: [
    "primary": xColor(red: 0.74, green: 0.25, blue: 0.1, alpha: 1),
    "secondary": xColor(red: 1, green: 0, blue: 0, alpha: 1),
    "accent": xColor(red: 0, green: 0, blue: 0, alpha: 1),
])

let book = xColorBook(pages: [
    "qa": qa_page,
    "xmas": xmas_page,
    "spooky": holloween_page
])
```
