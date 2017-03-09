;;; packages.el --- jsg-org layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Jason Graham <Jason@Jasons-MacBook-Pro.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;;; Code:
(with-eval-after-load 'org

  (cond ((eq system-type 'windows-nt)
         (setq org-directory "C:\\Users\\JG186074\\Dropbox\\Notes\\org")
         (setq org-agenda-files (list "C:\\Users\\JG186074\\Dropbox\\Notes\\org\\church.org"
                                      "C:\\Users\\JG186074\\Dropbox\\Notes\\org\\work.org"
                                      "C:\\Users\\JG186074\\Dropbox\\Notes\\org\\projects.org")))
        ((eq system-type 'darwin)
         (setq org-directory "/Users/Jason/Dropbox/Notes/org")
         (setq org-journal-dir "/Users/Jason/Dropbox/Notes/journal/")
         (setq org-agenda-files (list "/Users/Jason/Dropbox/Notes/org/church.org"
                                      "/Users/Jason/Dropbox/Notes/org/work.org"
                                      "/Users/Jason/Dropbox/Notes/org/projects.org")))
        ((eq system-type 'gnu/linux)
         (setq org-directory ("/Users/Jason/Dropbox/Notes/org"))))

    (setq org-mobile-inbox-for-pull "~/Dropbox/Notes/org/inbox.org")
    (setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
    (setq org-mobile-files '("~/Dropbox/Notes/org"))

  (setq org-journal-date-format "#+TITLE: Journal Entry- %e %b %Y (%A)")
  (setq org-journal-time-format "")

  (add-hook 'org-mode-hook 'jsg-org/nolinum)

  (font-lock-add-keywords 'org-mode
                        '(("^ +\\([-*]\\) "
                         (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

  (setq org-ellipsis "⬎")

  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  (set-face-attribute 'org-table nil :inherit 'fixed-pitch)
  (add-hook 'markdown-mode-hook (lambda () (variable-pitch-mode t)))

  '(org-document-title ((t (:inherit default :weight bold :foreground "#c5c8c6" :font "Fira Code" :height 1.5 :underline nil))))
  '(org-level-1 ((t (:inherit default :weight bold :foreground "#c5c8c6" :font "Fira Code" :height 1.5))))
  '(org-level-2 ((t (:inherit default :weight bold :foreground "#c5c8c6" :font "Fira Code" :height 1.35))))
  '(org-level-3 ((t (:inherit default :weight bold :foreground "#c5c8c6" :font "Fira Code" :height 1.25))))
  '(org-level-4 ((t (:inherit default :weight bold :foreground "#c5c8c6" :font "Fira Code" :height 1.1))))
  '(org-level-5 ((t (:inherit default :weight bold :foreground "#c5c8c6" :font "Fira Code"))))
  '(org-level-6 ((t (:inherit default :weight bold :foreground "#c5c8c6" :font "Fira Code"))))
  '(org-level-7 ((t (:inherit default :weight bold :foreground "#c5c8c6" :font "Fira Code"))))
  '(org-level-8 ((t (:inherit default :weight bold :foreground "#c5c8c6" :font "Fira Code"))))


  (add-hook 'org-mode-hook (lambda () (variable-pitch-mode t)))

  (setq org-default-notes-file (concat (file-name-as-directory org-directory) "notes.org"))

  (setq org-confirm-babel-evaluate t)
  (add-hook 'emacs-lisp-mode-hook 'outline-minor-mode)

  )
;;; config.el ends here