;;; misc.el --- Emacs Prelude: Miscellaneous tweaks
;;
;;; Commentary:
;; Personal tweaks of the Prelude provided functionality

;;; Code:

;; Set command as meta
(setq mac-command-modifier 'meta)

;; Set default font
;; Use this instead of set-default-font so that daemon loads it
(setq default-frame-alist '((font . "Source Code Pro-12")))

;; Start with maximized windows
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Disable flyspell-mode
;; I'm not fond of spell checking on the fly!
(setq prelude-flyspell nil)

;; Enable copying from Emacs to OSX
(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)

;; Rebind moving between frames
(global-set-key (kbd "M-`") 'other-frame)

;;; misc.el ends here
