Trip.destroy_all
Rider.destroy_all
Scooter.destroy_all


rider1 = Rider.create(first_name: 'John' , last_name: 'Smith' , membership_type: 'Gold')
rider2 = Rider.create(first_name: 'Jane' , last_name: 'Doe' , membership_type: 'Silver')
rider3 = Rider.create(first_name: 'Rob' , last_name: 'Pedersen' , membership_type: 'Platinum')
rider4 = Rider.create(first_name: 'Sahnun' , last_name: 'Mohamud' , membership_type: 'Gold')
rider5 = Rider.create(first_name: 'Seth' , last_name: 'MacFarland' , membership_type: 'Bronze')

scooter1 = Scooter.create(name: "Robin", model: "Byrd", color: "black", inception_date: "2019-01-01")
scooter2 = Scooter.create(name: "Oriole", model: "Byrd", color: "blue", inception_date: "2019-01-02")
scooter3 = Scooter.create(name: "Lark", model: "Byrd", color: "red", inception_date: "2019-01-03")
scooter4 = Scooter.create(name: "Eagle", model: "Byrd", color: "green", inception_date: "2019-01-04")
scooter5 = Scooter.create(name: "Falcon", model: "Byrd", color: "orange", inception_date: "2019-01-05")


trip1 = Trip.create(date: "2019-06-05", mileage: 15, pick_up_loc: "G Street", drop_off_loc: "K Street", rider_id: rider1.id , scooter_id: scooter5.id )
trip2 = Trip.create(date: "2019-06-06", mileage: 15, pick_up_loc: "M Street", drop_off_loc: "L Street", rider_id: rider2.id , scooter_id: scooter4.id )
trip3 = Trip.create(date: "2019-06-07", mileage: 15, pick_up_loc: "L Street", drop_off_loc: "O Street", rider_id: rider3.id , scooter_id: scooter3.id )
trip4 = Trip.create(date: "2019-06-08", mileage: 15, pick_up_loc: "A Street", drop_off_loc: "B Street", rider_id: rider4.id , scooter_id: scooter2.id )
trip5 = Trip.create(date: "2019-06-09", mileage: 15, pick_up_loc: "D Street", drop_off_loc: "F Street", rider_id: rider5.id , scooter_id: scooter1.id )
trip6 = Trip.create(date: "2019-06-10", mileage: 15, pick_up_loc: "F Street", drop_off_loc: "I Street", rider_id: rider5.id , scooter_id: scooter1.id )
trip7 = Trip.create(date: "2019-06-11", mileage: 15, pick_up_loc: "J Street", drop_off_loc: "L Street", rider_id: rider2.id , scooter_id: scooter2.id )
trip8 = Trip.create(date: "2019-06-12", mileage: 15, pick_up_loc: "G Street", drop_off_loc: "K Street", rider_id: rider3.id , scooter_id: scooter3.id )
trip9 = Trip.create(date: "2019-06-01", mileage: 15, pick_up_loc: "B Street", drop_off_loc: "Y Street", rider_id: rider1.id , scooter_id: scooter4.id )
trip10 = Trip.create(date: "2019-06-02", mileage: 15, pick_up_loc: "Z Street", drop_off_loc: "A Street", rider_id: rider4.id , scooter_id: scooter5.id )
