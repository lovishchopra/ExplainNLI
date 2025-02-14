(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsSkateboarder (BoundSet) Bool)
(declare-fun IsJumping (BoundSet) Bool)
(declare-fun HasBoard (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsSkateboarder a) (and (IsJumping a) (HasBoard a b))))) (and (forall ((d BoundSet)) (=> (IsSkateboarder d) (IsJumping d))) (and (forall ((e BoundSet)) (=> (IsJumping e) (IsSkateboarder e))) (and (forall ((f BoundSet)) (=> (IsJumping f) (IsSkateboarder f))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsSkateboarder g) (HasBoard g h)))) (forall ((i BoundSet)) (forall ((j BoundSet)) (=> (IsJumping i) (HasBoard i j))))))))) (exists ((a BoundSet)) (and (IsSkateboarder a) (IsJumping a))))))
(check-sat)
(get-model)