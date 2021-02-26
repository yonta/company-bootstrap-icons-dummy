;;; company-bootstrap-icons.el --- A company backend for bootstrap icons.

;; Copyright (C) 2019 typefo

;; Author: SAITOU Keita <keita44.f4@gmail.com>
;; URL: https://github.com/yonta/company-bootstrap-icons
;; Package-Requires: ((emacs "24.3") (company "0.9.10"))
;; Version: 1.4.0

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; This a company backend for twitter bootstrap icons
;; See README for more details.

;;; Code:

(require 'cl-lib)
(require 'company)
(require 'company-bootstrap-icons-completions)

(defconst company-bootstrap-icons-version "1.4.0")

;;;###autoload
(defun company-bootstrap-icons (command &optional arg &rest ignored)
  "Company backend for Bootstrap Icons."
  (interactive (list 'interactive))
  (cl-case command
    (interactive (company-begin-backend 'company-bootstrap-icons))
    (prefix (company-grab-symbol))
    (candidates
     (cl-remove-if-not
      (lambda (c) (string-prefix-p arg c))
      company-bootstrap-icons-completions))))

(provide 'company-bootstrap-icons)

;;; company-bootstrap-icons.el ends here
