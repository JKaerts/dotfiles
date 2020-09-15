; When opening a file, start searching from the user's home directory
(setq default-directory "~/")

; Allow 20MB of memory (instead of 0.76MB) before calling garbage
; collection. This means GC runs less often, which speeds up some
; operations.
(setq gc-cons-threshold 20000000)

; Delete trailing whitespace every time a buffer is saved
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; Treat CamelCaseSubWords as separate words in every programming mode.
(add-hook 'prog-mode-hook 'subword-mode)

; Don't assume that sentences should have two spaces after a full stop
(setq sentence-end-double-space nil)

; If some text is selected, and you type some text, delete the
; selected text and start inserting your typed text.
(delete-selection-mode t)

; If you save a file that doesn't end with a newline, automatically
; append one.
(setq require-final-newline t)

; Ask if you're sure that you want to close Emacs.
(setq confirm-kill-emacs 'y-or-n-p)

; Add file sizes in human-readable units (KB, MB, etc) to dired
; buffers.
(setq-default dired-listing-switches "-alh")

; When something changes a file, automatically refresh the buffer
; containing that file so they can't get out of sync.
(global-auto-revert-mode t)

; Let's copy the backup files to their own folder.
(setq backup-directory-alist `(("." . "~/emacs_backups")))
(setq backup-by-copying t)

; custom-set-variables should not clog the init file. This way all
; these statements are sent to their own file (which is never included
; in init.el but it doesnt know that).
(setq custom-file (concat user-emacs-directory "/custom.el"))

; Set utf-8 as the default coding system
(prefer-coding-system 'utf-8)


; Make <home> and <end> move point to the beginning and end of the
; line, respectively.
(global-set-key (kbd "<home>") 'move-beginning-of-line)
(global-set-key (kbd "<end>") 'move-end-of-line)
