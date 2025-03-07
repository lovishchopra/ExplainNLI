(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun 1.5 () BoundSet)
(declare-fun IsLimitedTo (BoundSet BoundSet) Bool)
(declare-fun IsPossibleWithin (BoundSet BoundSet) Bool)
(declare-fun RequiresUnprecedentedChanges (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((b BoundSet)) (and (IsLimitedTo a b) (IsPossibleWithin a c))))) (exists ((a BoundSet)) (and (IsLimitedTo a 1.5) (RequiresUnprecedentedChanges a))))))
(check-sat)
(get-model)