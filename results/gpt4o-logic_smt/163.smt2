(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsBrownAndWhite (BoundSet) Bool)
(declare-fun IsChainedUp (BoundSet) Bool)
(declare-fun IsNearRedChair (BoundSet) Bool)
(declare-fun IsChainedTo (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (and (IsBrownAndWhite a) (and (IsChainedUp a) (IsNearRedChair a)))) (exists ((c BoundSet)) (exists ((d BoundSet)) (and (IsBrownAndWhite c) (IsChainedTo c d)))))))
(check-sat)
(get-model)