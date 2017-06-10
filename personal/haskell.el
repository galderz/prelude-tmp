;;; haskell.el --- Emacs Prelude: Haskell tweaks
;;
;;; Commentary:
;; Personal tweaks of the Haskell mode

;;; Code:


;; Install Intero
(package-install 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)


;; Install Company GHCI
(package-install 'company-ghci)
(push 'company-ghci company-backends)
(add-hook 'haskell-mode-hook 'company-mode)
;;; To get completions in the REPL
(add-hook 'haskell-interactive-mode-hook 'company-mode)


;;; haskell.el ends here
