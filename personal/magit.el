;;; magit.el --- Emacs Magit: Miscellaneous tweaks
;;
;;; Commentary:
;; Personal tweaks of the Magit provided functionality

;;; Code:

(add-to-list 'load-path "~/.emacs.d/personal/lib/s")
(add-to-list 'load-path "~/.emacs.d/personal/lib/magit-gh-pulls")
(require 'magit-gh-pulls)
(add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)

;;; magit.el ends here
