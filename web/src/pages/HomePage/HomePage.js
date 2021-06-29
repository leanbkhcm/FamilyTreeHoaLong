import { Link, routes } from '@redwoodjs/router'
import {
    TimelineMini
} from 'src/components/Timeline/TimelineMini'


const HomePage = () => {
  return (
    <>
      <h1>HomePage</h1>
      
    
    
    
      <TimelineMini 
                            showPillDate
                                pillDate="2 Days ago"
                            icon="times-circle"
                                iconClassName="text-danger"
                            badgeTitle="Alert"
                                badgeColor="danger"
                        />
                        <TimelineMini 
                            icon="question-circle"
                                iconClassName="text-warning"
                            badgeTitle="Warning"
                                badgeColor="warning"
                        />
    </>
    
    
    
  )
}

export default HomePage
