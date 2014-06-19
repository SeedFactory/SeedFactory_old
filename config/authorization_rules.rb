authorization do

  role :developer do
    has_omnipotence
  end

end

privileges do

  privilege :manage do
    includes :index, :show, :edit, :update, :new, :create, :destroy
  end

end