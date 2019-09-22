
;;; CODE:

(add-hook 'org-mode-hook (lambda ()
                           (setq org-latex-listings 'minted)
                           (require 'ox-latex)
                           (add-to-list 'org-latex-packages-alist '("newfloat" "minted"))
	(setq org-latex-pdf-process
         '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
           "bibtex %b"
           "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
           "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
        (org-latex-export-to-pdf)))
(provide 'emacs-convert)
;;; emacs_convert.el ends here
