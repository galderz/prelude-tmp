;;; g-preludes.el --- Emacs Prelude: Personal tweaks
;;
;;; Commentary:
;; Personal tweaks of the Prelude provided functionality

;;; Code:

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
