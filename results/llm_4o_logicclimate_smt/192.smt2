(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsSightseeing (BoundSet) Bool)
(declare-fun IsTakingPictures (BoundSet) Bool)
(declare-fun Exist (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsSightseeing a) (IsTakingPictures a))) (and (forall ((c BoundSet)) (=> (IsSightseeing c) (Exist c))) (forall ((d BoundSet)) (=> (IsTakingPictures d) (Exist d))))) (exists ((a BoundSet)) (Exist a)))))
(check-sat)
(get-model)