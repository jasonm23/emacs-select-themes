;;; select-themes.el --- Color theme selection with completeing-read -*- lexical-binding: t; -*-

;;  Copyright (c) 2016 by Jason Milkins

;; Author: Jason Milkins <jasonm23@gmail.com>
;; URL: https://github.com/jasonm23/emacs-select-themes
;; Version: 0.1.0

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

;; select-themes.el provides theme selection with default
;; completing-read interface, differs from M-x `load-theme' by
;; disabling other loaded themes first.

;;; Code:

;;;###autoload
(defun select-themes ()
  "Select a theme, first disabling any other loaded theme.

This is because multiple enabled themes cause Emacs to slow down."
  (interactive)
  (let ((theme (completing-read
                "Select theme: "
                `("default" ,@(custom-available-themes)))))
    (mapc 'disable-theme custom-enabled-themes)
      (load-theme (intern-soft theme)))))
    (unless (string= theme "default")

;;; select-themes.el ends here
