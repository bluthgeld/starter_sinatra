Trip.destroy_all
Rider.destroy_all
Scooter.destroy_all


rider1 = Rider.create(first_name: 'John' , last_name: 'Smith' , membership_type: 'Gold')
rider2 = Rider.create(first_name: 'Jane' , last_name: 'Doe' , membership_type: 'Silver')
rider3 = Rider.create(first_name: 'Rob' , last_name: 'Pedersen' , membership_type: 'Platinum')
rider4 = Rider.create(first_name: 'Sahnun' , last_name: 'Mohamud' , membership_type: 'Gold')
rider5 = Rider.create(first_name: 'Seth' , last_name: 'MacFarland' , membership_type: 'Bronze')

scooter1 = Scooter.create()
