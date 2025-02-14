(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsSightseeing (BoundSet) Bool)
(declare-fun IsTakingPictures (BoundSet) Bool)
(declare-fun Exists (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsSightseeing a) (IsTakingPictures a))) (and (forall ((d BoundSet)) (=> (IsSightseeing d) (Exists d))) (forall ((e BoundSet)) (=> (IsTakingPictures e) (Exists e))))) (exists ((a BoundSet)) (Exists a)))))
(check-sat)
(get-model)