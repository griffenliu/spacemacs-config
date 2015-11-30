
(defvar han-default-input-method 'pinyin
  "The default chiense input method. Can be `wubi` or `pinyin`.")

(defvar han-enable-youdao-dict nil
  "Enble YouDao Dict translation service.")

(defun pyim-use-dict:bigdict ()
  (interactive)
  (setq pyim-dicts
        '((:name "BigDict"
                 :file "~/.emacs.d/.cache/pyim-bigdict.pyim"
                 :coding utf-8-unix
                 :dict-type pinyin-dict)))
  (pyim-restart-1 t))

(defun pyim-helm-buffer-active-p ()
  (string-prefix-p
   "*helm"
   (buffer-name
    (window-buffer
     (active-minibuffer-window))) t))

(defun pyim-turn-off-evil-escape ()
  "Turn off evil escape by remapping the key."
  (define-key evil-emacs-state-map
    (kbd "<remap> <evil-escape-emacs-state>") 'self-insert-command))

(defun pyim-turn-on-evil-escape ()
  "Turn on evil escape by reset key mapping to default."
  (define-key evil-emacs-state-map
    [remap evil-escape-emacs-state] nil))
