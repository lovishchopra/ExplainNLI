(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Buys (BoundSet BoundSet) Bool)
(declare-fun IsMadeFunOf (BoundSet) Bool)
(declare-fun IsNotChosenForGroupProjects (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (not (Buys b a)) (and (IsMadeFunOf b) (IsNotChosenForGroupProjects b))))) (exists ((a BoundSet)) (exists ((x BoundSet)) (Buys x a))))))
(check-sat)
(get-model)