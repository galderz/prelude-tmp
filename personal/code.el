;; code.el --- Indentation styles et al
;;
;;; Commentary:
;; Indentation styles et al for all modes in one central location

;;; Code:

;; Javascript indentation
(setq-default js2-basic-offset 2)

;; Append haskell-mode and elm-mode to modes to avoid auto indent
(defcustom prelude-indent-sensitive-modes
  '(conf-mode coffee-mode haml-mode python-mode slim-mode yaml-mode haskell-mode elm-mode)
  "Modes for which auto-indenting is suppressed."
  :type 'list
  :group 'prelude)

;;; code.el ends here
