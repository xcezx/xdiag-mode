;;; xdiag-mode-test.el --- Test for xdiag-mode

(require 'ert)
(require 'xdiag-mode)

(ert-deftest xdiag-mode-test--blockdiag-mode ()
  (with-temp-buffer
    (declare (debug t) (indent 1))
    (insert "blockdiag { }")
    (goto-char (point-min))
    (set-auto-mode)
    (should (equal major-mode 'blockdiag-mode))))

(ert-deftest xdiag-mode-test--seqdiag-mode ()
  (with-temp-buffer
    (declare (debug t) (indent 1))
    (insert "seqdiag { }")
    (goto-char (point-min))
    (set-auto-mode)
    (should (equal major-mode 'seqdiag-mode))))

(ert-deftest xdiag-mode-test--actdiag-mode ()
  (with-temp-buffer
    (declare (debug t) (indent 1))
    (insert "actdiag { }")
    (goto-char (point-min))
    (set-auto-mode)
    (should (equal major-mode 'actdiag-mode))))

(ert-deftest xdiag-mode-test--nwdiag-mode ()
  (with-temp-buffer
    (declare (debug t) (indent 1))
    (insert "nwdiag { }")
    (goto-char (point-min))
    (set-auto-mode)
    (should (equal major-mode 'nwdiag-mode))))

;;; xdiag-mode-test.el ends here
