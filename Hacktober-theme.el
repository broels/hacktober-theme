;;; hacktober-theme.el --- Hacktober color theme for Emacs.

;; Copyright (C) 2018  Brian Roels

;; Author: Brian Roels <bfr897@gmail.com>
;; Maintainer: Brian Roels <bfr897@gmail.com>
;; Keywords: hacktober palette color theme color-theme deftheme
;; URL:
;; Version: 0.0.1
;; Package-Requires: ((emacs "24"))

;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Inspired by the Hacktober ITerm2 theme with some feng-shui-theme styling.
;; Drop it into themes directory defined by `custom-theme-set-faces' and enjoy it.

;;; Credits:

;; Colour selection by Mark Badolato:
;; https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/Xresources/Hacktober

;; Based on Syohei Yoshida's "feng-shui" theme.
;; https://github.com/emacs-jp/replace-colorthemes/blob/master/feng-shui-theme.el

;;; Code:

(deftheme hacktober)

(let ((hacktober-fg "#c9c9c9")
      (hacktober-bg "#141414")
      (hacktober-fg-hl "#141414")
      (hacktober-bg-hl "#c9c9c9")
      (hacktober-cr "#c9c9c9")
      (hacktober-bd "#c9c9c9")
      (hacktober-black "#191918")
      (hacktober-black-bright "#2c2b2a")
      (hacktober-red "#b34538")
      (hacktober-red-bright "#b33323")
      (hacktober-green "#587744")
      (hacktober-green-bright "#42824a")
      (hacktober-yellow "#d08949")
      (hacktober-yellow-bright "#c75a22")
      (hacktober-blue "#206ec5")
      (hacktober-blue-bright "#5389c5")
      (hacktober-magenta "#864651")
      (hacktober-magenta-bright "#e795a5")
      (hacktober-cyan "#ac9166")
      (hacktober-cyan-bright "#ebc587")
      (hacktober-white "#f1eee7")
      (hacktober-white-bright "#ffffff")
      (hacktober-grey "#ccc")
      (hacktober-grey-1 "#bbb")
      (hacktober-grey-2 "#888")
      (hacktober-grey-3 "#444"))

  (custom-theme-set-faces
   'hacktober

   ;; ui
   `(default ((t (:background ,hacktober-bg :foreground ,hacktober-fg))))
   `(bold ((t (:bold t :weight bold))))
   `(italic ((t (:italic t))))
   `(bold-italic ((t (:italic t :bold t :weight bold))))
   `(variable-pitch ((t (:family "helv"))))
   `(fixed-pitch ((t (:family "courier"))))
   `(hl-line ((t (:background ,hacktober-black-bright))))
   `(highlight ((t (:background ,hacktober-bg-hl :foreground ,hacktober-fg-hl))))
   `(region ((t (:background ,hacktober-bg-hl :foreground ,hacktober-fg-hl))))
   `(header-line ((t (:foregound ,hacktober-yellow))))
   `(menu ((t (:foreground ,hacktober-fg :background ,hacktober-bg))))
   `(mode-line ((t (:foreground ,hacktober-bg :background ,hacktober-green))))
   `(mode-line-inactive ((t (:foreground ,hacktober-fg :background ,hacktober-bg))))
   `(mode-line-buffer-id ((t (:foreground ,hacktober-magenta :weight bold))))
   `(minibuffer-prompt ((t (:foreground ,hacktober-yellow))))

   ;; syntax
   `(font-lock-comment-face ((t (:italic t :foreground ,hacktober-grey-2))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,hacktober-grey-3))))
   `(font-lock-constant-face ((t (:foreground ,hacktober-cyan))))
   `(font-lock-builtin-face ((t (:foreground ,hacktober-cyan))))
   `(font-lock-function-name-face ((t (:bold t :underline t :foreground ,hacktober-blue))))
   `(font-lock-variable-name-face ((t (:foreground ,hacktober-red))))
   `(font-lock-keyword-face ((t (:foreground ,hacktober-yellow))))
   `(font-lock-string-face ((t (:foreground ,hacktober-yellow-bright))))
   `(font-lock-doc-string-face ((t (:foreground ,hacktober-fg-hl))))
   `(font-lock-type-face ((t (:foreground ,hacktober-green-bright))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'hacktober)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; hacktober-theme.el ends here
