(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun LivedLife (BoundSet BoundSet) Bool)
(declare-fun LivedLike (BoundSet BoundSet) Bool)
(declare-fun IsBeautifulPlace (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (LivedLife a b))) (forall ((g BoundSet)) (forall ((f BoundSet)) (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (LivedLike f g) (LivedLife h i))))))) (exists ((e BoundSet)) (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (LivedLike c a) (IsBeautifulPlace d e)))))))))
(check-sat)
(get-model)