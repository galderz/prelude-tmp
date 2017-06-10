;;; haskell.el --- Emacs Prelude: Haskell tweaks
;;
;;; Commentary:
;; Personal tweaks of the Haskell mode

;;; Code:

;; Install Intero
(package-install 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)

;;; haskell.el ends here
