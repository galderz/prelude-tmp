;; code.el --- Indentation styles et al
;;
;;; Commentary:
;; Indentation styles et al for all modes in one central location

;;; Code:

;; Javascript indentation
(setq-default js2-basic-offset 2)

;; Append haskell-mode and elm-mode to modes to avoid auto indent
;; (defcustom prelude-indent-sensitive-modes
;;  '(conf-mode coffee-mode haml-mode python-mode slim-mode yaml-mode haskell-mode elm-mode)
;;  "Modes for which auto-indenting is suppressed."
;;  :type 'list
;;  :group 'prelude)

;; Disable automatic indentation
(electric-indent-mode 0)

;; Haskell indentation
(setq-default haskell-indent-spaces 4)
(setq-default haskell-indentation-layout-offset 4)
(setq-default haskell-indentation-starter-offset 4)
(setq-default haskell-indentation-left-offset 4)
(setq-default haskell-indentation-ifte-offset 4)
(setq-default haskell-indentation-where-pre-offset 4)
(setq-default haskell-indentation-where-post-offset 4)

;;; code.el ends here
