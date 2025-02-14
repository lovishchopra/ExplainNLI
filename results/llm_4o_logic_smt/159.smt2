(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsBearded (BoundSet) Bool)
(declare-fun SitsNear (BoundSet BoundSet) Bool)
(declare-fun IsWhiteVan (BoundSet) Bool)
(declare-fun IsSittingOutside (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (and (IsBearded a) (and (SitsNear a b) (IsWhiteVan b))))) (exists ((d BoundSet)) (exists ((c BoundSet)) (and (IsSittingOutside c) (SitsNear c d)))))))
(check-sat)
(get-model)