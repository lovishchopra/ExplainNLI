(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Found (BoundSet BoundSet) Bool)
(declare-fun BecamePopular (BoundSet) Bool)
(declare-fun HelpedFind (BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (Found a c) (BecamePopular b))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (BecamePopular b) (HelpedFind a)))))))
(check-sat)
(get-model)