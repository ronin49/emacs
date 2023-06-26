(defun latest-file (path)
  "Get latest file (including directory) in PATH."
  (car (directory-files path 'nil nil #'file-newer-than-file-p)))

(defun screen ()
  (interactive)
  (insert (concat "[[file:" (latest-file ".") "]]"))
  (org-display-inline-images))



