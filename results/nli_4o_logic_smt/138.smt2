(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsWearing (BoundSet BoundSet) Bool)
(declare-fun HasThrown (BoundSet BoundSet) Bool)
(declare-fun IsLarge (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (IsWearing a b) (and (HasThrown a c) (IsLarge c)))))) (exists ((a BoundSet)) (exists ((d BoundSet)) (IsWearing a d))))))
(check-sat)
(get-model)