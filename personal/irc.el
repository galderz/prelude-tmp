;;; g-irc.el --- Emacs Circe: Personal settings
;;
;;; Commentary:
;; Personal Circe IRC settings

;;; Code:

(add-to-list 'load-path "~/.emacs.d/personal/lib/circe")
(require 'circe)

;; Load private file
(load-file "~/.private.el")

;; Networks and channels
(setq circe-network-options
      `(("Freenode"
         :nick "galderz"
         :channels (:after-auth "#infinispan" "#hibernate-dev"
                                "#emacs-circe" "#haskell-beginners"
                                "#brass-monkey")
         :nickserv-password ,freenode-password
         )
        ("Redhat"
         :host "irc-2.devel.redhat.com"
         :port (6667 . 6697)
         :nick "galderz"
         :channels ("#jdg" "#jboss-support" "#neuchatel")
         )))

;; Ignore buffer activity unless mentioned
(setq tracking-ignored-buffers '(("^#" circe-highlight-nick-face)))

;; Enable chat logging
(load "lui-logging" nil t)
(enable-lui-logging-globally)

;; Strip mIRC Color Codes
(eval-after-load 'circe
  '(defun lui-irc-propertize (&rest args)))

;; Hiding the Join/Part Spam
(setq circe-reduce-lurker-spam t)

;; Quick connect IRC command
(defun circe-connect-all ()
  "Connect to IRC"
  (interactive)
  (circe "Freenode")
  (circe "Redhat"))

;; Quick disconnect from all IRC channel
(defun circe-disconnect-all ()
  (interactive)
  (dolist (buf (buffer-list))
    (with-current-buffer buf
      (when (derived-mode-p 'circe-mode)
        (ignore-errors (delete-process circe-server-process))
        (let ((kill-buffer-hook nil)) (kill-this-buffer))))))

;; Keyboard shortcuts
(global-set-key (kbd "<f5>") 'circe-connect-all)
(global-set-key (kbd "<f6>") 'circe-reconnect-all)
(global-set-key (kbd "<f7>") 'circe-disconnect-all)
