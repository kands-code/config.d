;; keyboard map adjust

(define-key
  minibuffer-local-map
  (kbd "C-r") 'counsel-minibuffer-history)

(provide 'init-kbd)
